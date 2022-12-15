**free

ctl-opt dftactgrp(*no);

dcl-pi P2748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2082.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P2007.rpgleinc'

dcl-ds T1687 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1687 FROM T1687 LIMIT 1;

theCharVar = 'Hello from P2748';
dsply theCharVar;
P2082();
P22();
P2007();
return;