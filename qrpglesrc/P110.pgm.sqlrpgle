**free

ctl-opt dftactgrp(*no);

dcl-pi P110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds T119 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T119 FROM T119 LIMIT 1;

theCharVar = 'Hello from P110';
dsply theCharVar;
P68();
P15();
return;