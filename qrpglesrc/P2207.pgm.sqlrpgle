**free

ctl-opt dftactgrp(*no);

dcl-pi P2207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds T86 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T86 FROM T86 LIMIT 1;

theCharVar = 'Hello from P2207';
dsply theCharVar;
P839();
P720();
P89();
return;