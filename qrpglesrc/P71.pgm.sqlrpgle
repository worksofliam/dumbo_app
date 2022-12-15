**free

ctl-opt dftactgrp(*no);

dcl-pi P71;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds T665 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T665 FROM T665 LIMIT 1;

theCharVar = 'Hello from P71';
dsply theCharVar;
P14();
P0();
P68();
return;