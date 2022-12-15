**free

ctl-opt dftactgrp(*no);

dcl-pi P3787;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1182.rpgleinc'
/copy 'qrpgleref/P2896.rpgleinc'
/copy 'qrpgleref/P1995.rpgleinc'

dcl-ds T1507 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1507 FROM T1507 LIMIT 1;

theCharVar = 'Hello from P3787';
dsply theCharVar;
P1182();
P2896();
P1995();
return;