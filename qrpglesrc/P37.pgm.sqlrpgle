**free

ctl-opt dftactgrp(*no);

dcl-pi P37;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P37';
dsply theCharVar;
P27();
P16();
P21();
return;