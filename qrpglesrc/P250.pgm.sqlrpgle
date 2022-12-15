**free

ctl-opt dftactgrp(*no);

dcl-pi P250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds T229 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T229 FROM T229 LIMIT 1;

theCharVar = 'Hello from P250';
dsply theCharVar;
P47();
P175();
P5();
return;