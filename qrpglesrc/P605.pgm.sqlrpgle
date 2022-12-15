**free

ctl-opt dftactgrp(*no);

dcl-pi P605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'

dcl-ds T721 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T721 FROM T721 LIMIT 1;

theCharVar = 'Hello from P605';
dsply theCharVar;
P299();
P6();
P521();
return;