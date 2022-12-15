**free

ctl-opt dftactgrp(*no);

dcl-pi P521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P462.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds T0 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T0 FROM T0 LIMIT 1;

theCharVar = 'Hello from P521';
dsply theCharVar;
P462();
P205();
P121();
return;