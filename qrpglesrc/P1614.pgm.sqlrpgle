**free

ctl-opt dftactgrp(*no);

dcl-pi P1614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'
/copy 'qrpgleref/P490.rpgleinc'

dcl-ds T364 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T364 FROM T364 LIMIT 1;

theCharVar = 'Hello from P1614';
dsply theCharVar;
P875();
P401();
P490();
return;