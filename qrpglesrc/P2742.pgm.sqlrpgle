**free

ctl-opt dftactgrp(*no);

dcl-pi P2742;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P388.rpgleinc'
/copy 'qrpgleref/P1111.rpgleinc'
/copy 'qrpgleref/P2518.rpgleinc'

dcl-ds T846 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T846 FROM T846 LIMIT 1;

theCharVar = 'Hello from P2742';
dsply theCharVar;
P388();
P1111();
P2518();
return;