**free

ctl-opt dftactgrp(*no);

dcl-pi P4778;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3622.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P1160.rpgleinc'

dcl-ds theTable extname('T353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T353 LIMIT 1;

theCharVar = 'Hello from P4778';
dsply theCharVar;
P3622();
P604();
P1160();
return;