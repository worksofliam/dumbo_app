**free

ctl-opt dftactgrp(*no);

dcl-pi P2121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2049.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P2009.rpgleinc'

dcl-ds T937 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T937 FROM T937 LIMIT 1;

theCharVar = 'Hello from P2121';
dsply theCharVar;
P2049();
P329();
P2009();
return;