**free

ctl-opt dftactgrp(*no);

dcl-pi P4851;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2079.rpgleinc'
/copy 'qrpgleref/P4213.rpgleinc'
/copy 'qrpgleref/P3022.rpgleinc'

dcl-ds T638 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T638 FROM T638 LIMIT 1;

theCharVar = 'Hello from P4851';
dsply theCharVar;
P2079();
P4213();
P3022();
return;