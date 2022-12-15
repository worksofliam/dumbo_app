**free

ctl-opt dftactgrp(*no);

dcl-pi P1006;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds T552 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T552 FROM T552 LIMIT 1;

theCharVar = 'Hello from P1006';
dsply theCharVar;
P371();
P602();
P348();
return;