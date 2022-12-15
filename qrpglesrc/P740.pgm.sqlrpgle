**free

ctl-opt dftactgrp(*no);

dcl-pi P740;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'

dcl-ds T79 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T79 FROM T79 LIMIT 1;

theCharVar = 'Hello from P740';
dsply theCharVar;
P402();
P265();
P347();
return;