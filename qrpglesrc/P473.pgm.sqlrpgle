**free

ctl-opt dftactgrp(*no);

dcl-pi P473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'

dcl-ds T39 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T39 FROM T39 LIMIT 1;

theCharVar = 'Hello from P473';
dsply theCharVar;
P340();
P319();
P163();
return;