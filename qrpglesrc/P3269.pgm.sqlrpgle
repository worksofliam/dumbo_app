**free

ctl-opt dftactgrp(*no);

dcl-pi P3269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P2311.rpgleinc'
/copy 'qrpgleref/P2031.rpgleinc'

dcl-ds T942 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T942 FROM T942 LIMIT 1;

theCharVar = 'Hello from P3269';
dsply theCharVar;
P879();
P2311();
P2031();
return;