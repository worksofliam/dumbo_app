**free

ctl-opt dftactgrp(*no);

dcl-pi P2932;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P511.rpgleinc'
/copy 'qrpgleref/P1420.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T1193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1193 LIMIT 1;

theCharVar = 'Hello from P2932';
dsply theCharVar;
P511();
P1420();
P28();
return;