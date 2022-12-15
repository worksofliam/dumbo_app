**free

ctl-opt dftactgrp(*no);

dcl-pi P2521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P857.rpgleinc'
/copy 'qrpgleref/P506.rpgleinc'

dcl-ds theTable extname('T432') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T432 LIMIT 1;

theCharVar = 'Hello from P2521';
dsply theCharVar;
P518();
P857();
P506();
return;