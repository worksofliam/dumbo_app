**free

ctl-opt dftactgrp(*no);

dcl-pi P206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds T569 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T569 FROM T569 LIMIT 1;

theCharVar = 'Hello from P206';
dsply theCharVar;
P166();
P201();
P89();
return;