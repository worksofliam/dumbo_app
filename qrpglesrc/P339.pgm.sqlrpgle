**free

ctl-opt dftactgrp(*no);

dcl-pi P339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds T361 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T361 FROM T361 LIMIT 1;

theCharVar = 'Hello from P339';
dsply theCharVar;
P41();
P132();
P175();
return;