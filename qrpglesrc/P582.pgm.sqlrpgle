**free

ctl-opt dftactgrp(*no);

dcl-pi P582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'

dcl-ds T111 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T111 FROM T111 LIMIT 1;

theCharVar = 'Hello from P582';
dsply theCharVar;
P452();
P89();
P311();
return;