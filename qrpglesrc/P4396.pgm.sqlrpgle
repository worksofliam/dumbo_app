**free

ctl-opt dftactgrp(*no);

dcl-pi P4396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3984.rpgleinc'
/copy 'qrpgleref/P3570.rpgleinc'
/copy 'qrpgleref/P1836.rpgleinc'

dcl-ds T106 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T106 FROM T106 LIMIT 1;

theCharVar = 'Hello from P4396';
dsply theCharVar;
P3984();
P3570();
P1836();
return;