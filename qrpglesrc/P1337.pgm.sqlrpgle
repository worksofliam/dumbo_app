**free

ctl-opt dftactgrp(*no);

dcl-pi P1337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'
/copy 'qrpgleref/P1062.rpgleinc'

dcl-ds theTable extname('T235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T235 LIMIT 1;

theCharVar = 'Hello from P1337';
dsply theCharVar;
P174();
P949();
P1062();
return;