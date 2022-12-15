**free

ctl-opt dftactgrp(*no);

dcl-pi P740;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P740';
dsply theCharVar;
P375();
P339();
P117();
return;