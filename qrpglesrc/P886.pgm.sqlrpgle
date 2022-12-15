**free

ctl-opt dftactgrp(*no);

dcl-pi P886;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'

dcl-ds T78 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T78 FROM T78 LIMIT 1;

theCharVar = 'Hello from P886';
dsply theCharVar;
P596();
P38();
P456();
return;