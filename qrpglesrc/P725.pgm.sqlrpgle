**free

ctl-opt dftactgrp(*no);

dcl-pi P725;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'

dcl-ds theTable extname('T40') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T40 LIMIT 1;

theCharVar = 'Hello from P725';
dsply theCharVar;
P420();
P427();
P564();
return;