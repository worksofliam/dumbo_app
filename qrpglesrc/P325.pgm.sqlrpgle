**free

ctl-opt dftactgrp(*no);

dcl-pi P325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'

dcl-ds theTable extname('T144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T144 LIMIT 1;

theCharVar = 'Hello from P325';
dsply theCharVar;
P91();
P245();
P320();
return;