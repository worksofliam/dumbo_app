**free

ctl-opt dftactgrp(*no);

dcl-pi P4934;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2376.rpgleinc'
/copy 'qrpgleref/P3082.rpgleinc'
/copy 'qrpgleref/P769.rpgleinc'

dcl-ds T1512 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1512 FROM T1512 LIMIT 1;

theCharVar = 'Hello from P4934';
dsply theCharVar;
P2376();
P3082();
P769();
return;