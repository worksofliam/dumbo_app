**free

ctl-opt dftactgrp(*no);

dcl-pi P3647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1960.rpgleinc'
/copy 'qrpgleref/P887.rpgleinc'
/copy 'qrpgleref/P2202.rpgleinc'

dcl-ds theTable extname('T296') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T296 LIMIT 1;

theCharVar = 'Hello from P3647';
dsply theCharVar;
P1960();
P887();
P2202();
return;