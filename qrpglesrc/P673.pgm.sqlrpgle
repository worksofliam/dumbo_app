**free

ctl-opt dftactgrp(*no);

dcl-pi P673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'

dcl-ds T384 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T384 FROM T384 LIMIT 1;

theCharVar = 'Hello from P673';
dsply theCharVar;
P281();
P424();
P416();
return;