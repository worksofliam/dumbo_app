**free

ctl-opt dftactgrp(*no);

dcl-pi P3098;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1403.rpgleinc'
/copy 'qrpgleref/P2456.rpgleinc'
/copy 'qrpgleref/P2341.rpgleinc'

dcl-ds T874 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T874 FROM T874 LIMIT 1;

theCharVar = 'Hello from P3098';
dsply theCharVar;
P1403();
P2456();
P2341();
return;