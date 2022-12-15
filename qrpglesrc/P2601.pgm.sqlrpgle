**free

ctl-opt dftactgrp(*no);

dcl-pi P2601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2563.rpgleinc'
/copy 'qrpgleref/P1247.rpgleinc'
/copy 'qrpgleref/P1112.rpgleinc'

dcl-ds T43 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T43 FROM T43 LIMIT 1;

theCharVar = 'Hello from P2601';
dsply theCharVar;
P2563();
P1247();
P1112();
return;