**free

ctl-opt dftactgrp(*no);

dcl-pi P2899;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2465.rpgleinc'
/copy 'qrpgleref/P1395.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds T992 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T992 FROM T992 LIMIT 1;

theCharVar = 'Hello from P2899';
dsply theCharVar;
P2465();
P1395();
P33();
return;