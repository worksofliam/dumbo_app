**free

ctl-opt dftactgrp(*no);

dcl-pi P4631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4210.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'
/copy 'qrpgleref/P2821.rpgleinc'

dcl-ds T1638 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1638 FROM T1638 LIMIT 1;

theCharVar = 'Hello from P4631';
dsply theCharVar;
P4210();
P817();
P2821();
return;