**free

ctl-opt dftactgrp(*no);

dcl-pi P442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds T186 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T186 FROM T186 LIMIT 1;

theCharVar = 'Hello from P442';
dsply theCharVar;
P115();
P326();
P54();
return;