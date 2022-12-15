**free

ctl-opt dftactgrp(*no);

dcl-pi P5367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P2113.rpgleinc'
/copy 'qrpgleref/P1232.rpgleinc'

dcl-ds T43 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T43 FROM T43 LIMIT 1;

theCharVar = 'Hello from P5367';
dsply theCharVar;
P542();
P2113();
P1232();
return;