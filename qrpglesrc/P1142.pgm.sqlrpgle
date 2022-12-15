**free

ctl-opt dftactgrp(*no);

dcl-pi P1142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds T493 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T493 FROM T493 LIMIT 1;

theCharVar = 'Hello from P1142';
dsply theCharVar;
P11();
P521();
P102();
return;