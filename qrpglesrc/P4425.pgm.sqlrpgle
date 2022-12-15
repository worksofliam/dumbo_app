**free

ctl-opt dftactgrp(*no);

dcl-pi P4425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2261.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P4047.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P4425';
dsply theCharVar;
P2261();
P117();
P4047();
return;