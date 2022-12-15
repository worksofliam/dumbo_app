**free

ctl-opt dftactgrp(*no);

dcl-pi P576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'

dcl-ds theTable extname('T24') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T24 LIMIT 1;

theCharVar = 'Hello from P576';
dsply theCharVar;
P68();
P483();
P415();
return;