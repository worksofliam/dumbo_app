**free

ctl-opt dftactgrp(*no);

dcl-pi P1202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P882.rpgleinc'
/copy 'qrpgleref/P790.rpgleinc'
/copy 'qrpgleref/P403.rpgleinc'

dcl-ds T235 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T235 FROM T235 LIMIT 1;

theCharVar = 'Hello from P1202';
dsply theCharVar;
P882();
P790();
P403();
return;