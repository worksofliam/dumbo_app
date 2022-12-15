**free

ctl-opt dftactgrp(*no);

dcl-pi P2970;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2001.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P1632.rpgleinc'

dcl-ds T1661 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1661 FROM T1661 LIMIT 1;

theCharVar = 'Hello from P2970';
dsply theCharVar;
P2001();
P193();
P1632();
return;