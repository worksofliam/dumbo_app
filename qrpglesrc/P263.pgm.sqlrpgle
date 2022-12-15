**free

ctl-opt dftactgrp(*no);

dcl-pi P263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds T423 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T423 FROM T423 LIMIT 1;

theCharVar = 'Hello from P263';
dsply theCharVar;
P68();
P189();
P3();
return;