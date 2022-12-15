**free

ctl-opt dftactgrp(*no);

dcl-pi P4110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3804.rpgleinc'
/copy 'qrpgleref/P1874.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds T1256 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1256 FROM T1256 LIMIT 1;

theCharVar = 'Hello from P4110';
dsply theCharVar;
P3804();
P1874();
P82();
return;