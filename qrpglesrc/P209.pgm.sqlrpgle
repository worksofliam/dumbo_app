**free

ctl-opt dftactgrp(*no);

dcl-pi P209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds T13 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T13 FROM T13 LIMIT 1;

theCharVar = 'Hello from P209';
dsply theCharVar;
P117();
P54();
P205();
return;