**free

ctl-opt dftactgrp(*no);

dcl-pi P850;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P550.rpgleinc'
/copy 'qrpgleref/P567.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'

dcl-ds T286 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T286 FROM T286 LIMIT 1;

theCharVar = 'Hello from P850';
dsply theCharVar;
callp localProc();
P550();
P567();
P286();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P850 in the procedure';
end-proc;