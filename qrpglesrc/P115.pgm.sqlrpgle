**free

ctl-opt dftactgrp(*no);

dcl-pi P115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds T166 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T166 FROM T166 LIMIT 1;

theCharVar = 'Hello from P115';
dsply theCharVar;
P112();
P30();
P48();
return;