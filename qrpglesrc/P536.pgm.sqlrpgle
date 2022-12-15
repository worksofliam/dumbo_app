**free

ctl-opt dftactgrp(*no);

dcl-pi P536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P536';
dsply theCharVar;
P221();
P415();
P243();
return;