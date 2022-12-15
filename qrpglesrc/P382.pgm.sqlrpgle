**free

ctl-opt dftactgrp(*no);

dcl-pi P382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P330.rpgleinc'

dcl-ds T351 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T351 FROM T351 LIMIT 1;

theCharVar = 'Hello from P382';
dsply theCharVar;
P32();
P317();
P330();
return;