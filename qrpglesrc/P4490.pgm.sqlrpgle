**free

ctl-opt dftactgrp(*no);

dcl-pi P4490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4210.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P1153.rpgleinc'

dcl-ds theTable extname('T1286') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1286 LIMIT 1;

theCharVar = 'Hello from P4490';
dsply theCharVar;
P4210();
P178();
P1153();
return;