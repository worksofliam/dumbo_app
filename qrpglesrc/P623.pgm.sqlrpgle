**free

ctl-opt dftactgrp(*no);

dcl-pi P623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P566.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'

dcl-ds T122 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T122 FROM T122 LIMIT 1;

theCharVar = 'Hello from P623';
dsply theCharVar;
P566();
P621();
P412();
return;