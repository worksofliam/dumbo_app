**free

ctl-opt dftactgrp(*no);

dcl-pi P386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T207 LIMIT 1;

theCharVar = 'Hello from P386';
dsply theCharVar;
P308();
P68();
P40();
return;