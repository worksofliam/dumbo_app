**free

ctl-opt dftactgrp(*no);

dcl-pi P641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P447.rpgleinc'
/copy 'qrpgleref/P428.rpgleinc'

dcl-ds T596 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T596 FROM T596 LIMIT 1;

theCharVar = 'Hello from P641';
dsply theCharVar;
P177();
P447();
P428();
return;