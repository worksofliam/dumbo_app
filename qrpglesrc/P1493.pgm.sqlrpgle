**free

ctl-opt dftactgrp(*no);

dcl-pi P1493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P745.rpgleinc'
/copy 'qrpgleref/P566.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'

dcl-ds theTable extname('T456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T456 LIMIT 1;

theCharVar = 'Hello from P1493';
dsply theCharVar;
P745();
P566();
P160();
return;