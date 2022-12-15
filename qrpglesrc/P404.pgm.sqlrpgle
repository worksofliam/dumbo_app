**free

ctl-opt dftactgrp(*no);

dcl-pi P404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds T484 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T484 FROM T484 LIMIT 1;

theCharVar = 'Hello from P404';
dsply theCharVar;
P164();
P227();
P16();
return;