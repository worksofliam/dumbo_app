**free

ctl-opt dftactgrp(*no);

dcl-pi P5334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2870.rpgleinc'
/copy 'qrpgleref/P2599.rpgleinc'
/copy 'qrpgleref/P2229.rpgleinc'

dcl-ds T409 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T409 FROM T409 LIMIT 1;

theCharVar = 'Hello from P5334';
dsply theCharVar;
P2870();
P2599();
P2229();
return;