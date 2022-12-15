**free

ctl-opt dftactgrp(*no);

dcl-pi P434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P356.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'

dcl-ds theTable extname('T277') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T277 LIMIT 1;

theCharVar = 'Hello from P434';
dsply theCharVar;
P356();
P363();
P406();
return;