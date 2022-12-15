**free

ctl-opt dftactgrp(*no);

dcl-pi P4152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2942.rpgleinc'
/copy 'qrpgleref/P2304.rpgleinc'
/copy 'qrpgleref/P3475.rpgleinc'

dcl-ds T1747 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1747 FROM T1747 LIMIT 1;

theCharVar = 'Hello from P4152';
dsply theCharVar;
P2942();
P2304();
P3475();
return;