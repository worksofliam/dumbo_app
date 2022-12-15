**free

ctl-opt dftactgrp(*no);

dcl-pi P127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds theTable extname('T156') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T156 LIMIT 1;

theCharVar = 'Hello from P127';
dsply theCharVar;
P64();
P19();
P37();
return;