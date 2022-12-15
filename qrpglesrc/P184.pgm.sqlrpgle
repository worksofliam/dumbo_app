**free

ctl-opt dftactgrp(*no);

dcl-pi P184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds T213 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T213 FROM T213 LIMIT 1;

theCharVar = 'Hello from P184';
dsply theCharVar;
P115();
P41();
P181();
return;